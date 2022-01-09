Terms:

Business

data -> Repository

- The job of the repository is isolate and encapsulate persistence logic.
- The Repository returns a Domain Model.
- [Repository pattern](https://miro.medium.com/max/1400/1*xxr1Idc8UoNELOzqXcJnag.png) allows to
  - changes in the data sources don’t affect our high-level policies.
  - there is more separation of concerns since we avoid “god models”
  - bad Backend implementations don’t affect our high-level policies (imagine if you are forced to perform 2 network requests because Backend is not able to give you all the information you need in a single one, would you let this issue affect your whole codebase?).
- A Repository mediates between the domain and data mapping layers, acting like an in-memory domain object collection.
- Data Mappers

data -> model -> network models or database models

- Models are entities with some additional functionality added on top. In our case, that will be the ability to be serialized and deserialized to/from JSON.

domain -> model

- Domain Model
  - Entity: An entity is a plain object that has an identity (ID) and is potentially mutable.
  - Value object: immutable object without identity.
  - Aggregate root (DDD only): Entity that binds together with other entities (basically a cluster of associated objects).
