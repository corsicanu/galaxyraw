.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;
.super Ljava/lang/Object;
.source "PreviewAnimationLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onPreparePausedPreviewSnapshotRequested()V
.end method

.method public abstract onPreviewAnimationRequested(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewAnimationType"
        }
    .end annotation
.end method

.method public abstract onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "previewAnimationType"
        }
    .end annotation
.end method

.method public abstract onShowResumeCameraAnimationRequested()V
.end method
