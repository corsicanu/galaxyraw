.class Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$1;
.super Ljava/util/HashMap;
.source "NodeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "com.samsung.android.app.galaxyraw.core2.node.jpeg.JpegNodeBase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;

    const-string v2, "com.samsung.android.app.galaxyraw.core2.node.jpeg.ExternalJpegNode"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.samsung.android.app.galaxyraw.core2.node.jpeg.BasicJpegNode"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$TargetNodeClasses;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "Fail to map BASE/TARGET NODE CLASS - %s"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
