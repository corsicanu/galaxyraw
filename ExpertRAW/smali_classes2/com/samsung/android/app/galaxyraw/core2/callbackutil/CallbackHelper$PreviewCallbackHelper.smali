.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewCallbackHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPreviewFrame(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "previewCallbackForwarder",
            "previewData",
            "camDevice"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "PreviewCallbackHelper onPreviewFrame - unsupported previewFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;->onPreviewFrame(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    :goto_0
    return-void
.end method
