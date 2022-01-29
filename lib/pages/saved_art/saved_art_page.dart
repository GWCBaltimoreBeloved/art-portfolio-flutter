import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavedArtPage extends ConsumerWidget {
  const SavedArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '~Saved Art~',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 100,
              ),
              child: Text(
                'You have INSERT NUMBER works saved',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 64,
                top: 46,
              ),
              child: Image.network(
                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATYAAACjCAMAAAA3vsLfAAAAG1BMVEX+/v4AAAD////6+vo3NzdOTk6qqqqWlpY2NjZpWDPnAAABwElEQVR4nO3XQW7CQBQFQWLAzP1PnF2WRCpG8ozoOsCTf8sL+3YE3I7bPFcf897MQ6dmO18LOyceOjPbcX/8LOxxn3jq1Gzj6jTvjGWz9bbJVtloq2y0VTbaKhtt/WUbz4WMbbKdM7+hP3ScG2VbyE7Zpo1+rGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGxkq2wL2SnbtNGPbZRtPBcytsm2pLKRspGykbKRdbON/x/+OmPZbL1t5Hwt7Jx46NzP+av/o977olNX9QstbD512cQBXAAAAABJRU5ErkJggg==',
                width: 170,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 574,
                top: 0,
              ),
              child: Image.network(
                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATYAAACjCAMAAAA3vsLfAAAAG1BMVEX+/v4AAAD////6+vo3NzdOTk6qqqqWlpY2NjZpWDPnAAABwElEQVR4nO3XQW7CQBQFQWLAzP1PnF2WRCpG8ozoOsCTf8sL+3YE3I7bPFcf897MQ6dmO18LOyceOjPbcX/8LOxxn3jq1Gzj6jTvjGWz9bbJVtloq2y0VTbaKhtt/WUbz4WMbbKdM7+hP3ScG2VbyE7Zpo1+rGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGykbKRspGxkq2wL2SnbtNGPbZRtPBcytsm2pLKRspGykbKRdbON/x/+OmPZbL1t5Hwt7Jx46NzP+av/o977olNX9QstbD512cQBXAAAAABJRU5ErkJggg==',
                width: 170,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
