// class ContainerAllocationDispatcherImpl
//     implements ContainerAllocationDispatcher {
//   ///
//   late Box<ContainerAllocation> box;
//
//   @override
//   void add(AddContainerAllocation add) {
//     // `TODO`: implement add
//   }
//
//   @override
//   void build(BuildContainerAllocation build) {
//     // `TODO`: implement build
//   }
//
//   @override
//   ContainerAllocation get(GetContainerAllocation get) {
//     // `TODO`: implement get
//     throw UnimplementedError();
//   }
//
//   @override
//   List<ContainerAllocation> getAll(GetContainerAllocation get) {
//     // `TODO`: implement getAll
//     throw UnimplementedError();
//   }
//
//   @override
//   void mutate(ContainerAllocationMutation mutation) {
//     // `TODO`: implement mutate
//   }
//
//   ///
//   // @override
//   // dispatch<R>(ContainerAllocationCommand message) {
//   //   switch (message) {
//   //     case final ContainerAllocationMutation mutation:
//   //       switch (mutation) {
//   //         case final AddContainerAllocation add:
//   //           final allocation = ContainerAllocation(
//   //             add.containerType.uid,
//   //             add.start,
//   //             add.fixedDisplayLength,
//   //           )..spans.addAll(
//   //               add.spans.map((_) => ContainerSpan(_.$1.uid, _.$2)).toList(),
//   //             );
//   //           box.put(allocation);
//   //           print(allocation);
//   //         case BuildContainerAllocation():
//   //       }
//   //     case GetContainerAllocation(
//   //         containerType: final containerType,
//   //         start: final start
//   //       ):
//   //       final allocation = box
//   //           .query(ContainerAllocation_.start.equals(start).and(
//   //               ContainerAllocation_.containerTypeUid
//   //                   .equals(containerType.uid)))
//   //           .build()
//   //           .findUnique()!;
//   //   }
//   // }
// }
