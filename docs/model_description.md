---

# ✅ **docs/model_description.md**

```markdown
# Descrição da Modelagem de Dados em Grafos – Serviço de Streaming

Este documento descreve a modelagem lógica e conceitual utilizada neste projeto, implementada em Neo4j AuraDB Free.

---
```

## 📌 Objetivos da Modelagem

A modelagem em grafos visa:

- Facilitar análises de recomendação.
- Explorar conexões entre usuários, filmes, séries, atores e diretores.
- Permitir consultas eficientes com traversal graph.
- Demonstrar boas práticas de modelagem Neo4j.

---

## 🧱 **Labels Utilizadas**

### 1. **User**
Representa um usuário do serviço de streaming.

| Propriedade | Tipo | Descrição |
|------------|------|-----------|
| id | string | Identificador único |
| name | string | Nome do usuário |

---

### 2. **Movie**
Representa um filme.

| Propriedade | Tipo | Descrição |
|------------|------|-----------|
| title | string | Nome do filme |
| year | integer | Ano de lançamento |

---

### 3. **Series**
Representa uma série de TV.

| Propriedade | Tipo | Descrição |
|------------|------|-----------|
| title | string | Nome da série |
| seasons | integer | Número de temporadas |

---

### 4. **Genre**
Representa um gênero cinematográfico.

| Propriedade | Tipo |
|------------|------|
| name | string |

---

### 5. **Actor**
Representa um ator.

| Propriedade | Tipo |
|------------|------|
| name | string |

---

### 6. **Director**
Representa um diretor.

| Propriedade | Tipo |
|------------|------|
| name | string |

---

## 🔗 **Relacionamentos**

### `WATCHED`
- (User) → (Movie)  
- (User) → (Series)  

Indica conteúdos assistidos.

---

### `HAS_GENRE`
- (Movie) → (Genre)  
- (Series) → (Genre)

Classifica o conteúdo pelo gênero correspondente.

---

### `ACTED_IN`
- (Actor) → (Movie)  
- (Actor) → (Series)

Indica participação de atores.

---

### `DIRECTED`
- (Director) → (Movie)  
- (Director) → (Series)

Indica direção das obras.

---

## 🧭 Boas Práticas Aplicadas

- Labels começam com **letras maiúsculas**.
- Relacionamentos sempre em **CAIXA ALTA**.
- Propriedades em **camelCase**.
- Uso de constraints `UNIQUE` para garantir integridade.
- Estrutura clara e extensível para recomendação personalizada.

---

## 📌 Justificativa do Modelo

- Atores e diretores podem participar/direcionar múltiplas obras (1:N).
- Filmes e séries compartilham estrutura semelhante mas mantêm labels separados.
- Usuários têm relacionamento simples e direto com conteúdos assistidos.
- A escolha de gêneros como nós permite futuras análises amplas, como:
  - recomendações por gênero
  - quais atores atuam mais em determinados gêneros
  - quais usuários têm perfil semelhante

---

## 🎯 Conclusão

Este modelo permite consultas complexas com alto desempenho, favorecendo implementações de recomendação e análises exploratórias avançadas.
