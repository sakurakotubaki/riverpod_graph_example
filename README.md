# riverpod_graph_example

```bash
add flutter_rivflutter pub add \
flutter_riverpod \
riverpod_annotation \
dev:riverpod_generator \
dev:build_runner \
dev:custom_lint \
dev:riverpod_linterpod
```

create greet.md
```bash
dart pub global run riverpod_graph:riverpod_graph > greet.md
```

```mermaid 
flowchart TB  
subgraph Arrows  
direction LR  
start1[ ] -..->|read| stop1[ ]  
style start1 height:0px;  
style stop1 height:0px;  
start2[ ] --->|listen| stop2[ ]  
style start2 height:0px;  
style stop2 height:0px;  
start3[ ] ===>|watch| stop3[ ]  
style start3 height:0px;  
style stop3 height:0px;  
end  
subgraph Type  
direction TB  
ConsumerWidget((widget));  
Provider[[provider]];  
end  
  
greetNotifierProvider[["greetNotifierProvider"]];  
helloRepositoryProvider[["helloRepositoryProvider"]];  
CountView((CountView));  
  
greetNotifierProvider ==> CountView;  
helloRepositoryProvider -.-> CountView;  
greetNotifierProvider -.-> CountView;
```