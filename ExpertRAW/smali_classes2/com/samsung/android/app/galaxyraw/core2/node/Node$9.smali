.class Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needProcess()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->needProcessPicture()Z

    move-result p0

    return p0
.end method

.method public process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bundle"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/Node;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic process(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "bundle"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;->process(Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
