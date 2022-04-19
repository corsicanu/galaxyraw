.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;
.super Ljava/lang/Object;
.source "PreviewAnimationLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;
    }
.end annotation


# virtual methods
.method public abstract isPreviewAnimationRequested()Z
.end method

.method public abstract onPreviewSnapShotError()V
.end method

.method public abstract onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation
.end method

.method public abstract preparePausedPreviewSnapshot()V
.end method

.method public abstract requestPreviewAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation
.end method

.method public abstract setVerticalDirection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method public abstract showResumeCameraAnimation()V
.end method

.method public abstract startAreaAnimation(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewLayoutRect"
        }
    .end annotation
.end method

.method public abstract startAreaAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousPreviewRect",
            "previewLayoutRect"
        }
    .end annotation
.end method

.method public abstract startShutterAnimation()V
.end method
