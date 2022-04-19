.class Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder$1;
.super Ljava/lang/Object;
.source "BufferCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;->setBufferForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferForward(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardData"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;->mTarget:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->forwardBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;

    iget-object v2, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->size:Landroid/util/Size;

    iget-wide v3, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->format:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;-><init>(Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Integer;)V

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;->camDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;->onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onNotify(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder$ForwardData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardData"
        }
    .end annotation

    return-void
.end method
