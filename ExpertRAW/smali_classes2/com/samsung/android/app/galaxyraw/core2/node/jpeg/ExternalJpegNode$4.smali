.class Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;
.super Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;
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
        "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback<",
        "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
        "Landroid/util/Size;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "key"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onPostEventFromNative(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Landroid/util/Size;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg",
            "arg1",
            "arg2"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->access$000(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;)Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;->this$0:Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;->access$100(Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode;I)I

    move-result p0

    invoke-interface {v0, p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;->onThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ILandroid/util/Size;)V

    return-void
.end method

.method public bridge synthetic onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "arg",
            "arg1",
            "arg2"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    check-cast p2, Landroid/util/Size;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/ExternalJpegNode$4;->onPostEventFromNative(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Landroid/util/Size;Ljava/lang/Integer;)V

    return-void
.end method
