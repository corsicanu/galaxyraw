.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;
.super Ljava/lang/Object;
.source "PreviewAnimationLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancelAllAnimator()V
.end method

.method public abstract cancelPreviewAnimation()V
.end method

.method public abstract hidePreviewAnimation(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation
.end method

.method public abstract setPendingArea(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation
.end method

.method public abstract startPendingAreaAnimation(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation
.end method

.method public abstract startPreviewAnimation(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "facing",
            "previewRect"
        }
    .end annotation
.end method
