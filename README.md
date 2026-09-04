# Enterprise CI/CD & Multi-Environment IaC Pipeline with Azure DevOps and Terraform

Projeto de demonstração para entrega contínua (CI/CD) e gerenciamento de Infraestrutura como Código (IaC) no Microsoft Azure. A solução automatiza o ciclo completo de vida de uma aplicação Web Node.js distribuída em múltiplos ambientes (Staging e Produção), incluindo uma esteira dedicada de Teardown/FinOps para controle orçamentário.

---

## Arquitetura da Solução

```text
       [ Push to main ]
              │
              ▼
   ┌──────────────────────┐
   │    CI: Node.js       │ ── (Lint, Testes & Build Artifact)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │   IaC / CD Staging   │ ── (Terraform Apply [staging.tfstate] + Deploy App)
   └──────────┬───────────┘
              ▼
   ┌──────────────────────┐
   │   IaC / CD Prod      │ ── (Terraform Apply [prod.tfstate] + Deploy App)
   └──────────────────────┘

   ┌──────────────────────┐
   │  Manual Teardown     │ ── (Terraform Destroy sob demanda [Staging/Prod/All])
   └──────────────────────┘
