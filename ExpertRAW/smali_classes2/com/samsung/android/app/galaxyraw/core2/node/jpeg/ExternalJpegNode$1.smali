.class Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$1;
.super Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
.source "ExternalJpegNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "argClazz"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;-><init>(I[Ljava/lang/Class;)V

    return-void
.end method