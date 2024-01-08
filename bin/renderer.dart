part of 'dartdoc_astro.dart';

// final class DebugStreamSinkRenderer extends StringSinkRenderer {
//   const DebugStreamSinkRenderer();

//   @override
//   Object? visitCall(Call node, StringSinkRenderContext context) {
//     final func = switch (node.value) {
//       Name name => name.name.toString(),
//       Attribute attr => '${attr.value}.${attr.attribute}',
//       _ => node.value.toJson().toString(),
//     };
//     return catchContext(
//       'Error calling `$func`',
//       () => super.visitCall(node, context),
//     );
//   }
// }

// extension on Template {
//   void renderToDebug(StringSink sink, [Map<String, Object?>? data]) {
//     var context = StringSinkRenderContext(
//       environment,
//       sink,
//       parent: globals,
//       data: data,
//     );
//     catchContext(
//       'In template `$path`',
//       () => body.accept(const DebugStreamSinkRenderer(), context),
//     );
//   }
// }
