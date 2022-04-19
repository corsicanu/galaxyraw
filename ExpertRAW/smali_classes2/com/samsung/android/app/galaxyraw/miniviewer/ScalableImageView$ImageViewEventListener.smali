.class interface abstract Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;
.super Ljava/lang/Object;
.source "ScalableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ImageViewEventListener"
.end annotation


# virtual methods
.method public abstract onImageTouch()V
.end method

.method public abstract onImageZoomStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isZoomed"
        }
    .end annotation
.end method

.method public abstract onUpdateViewVisibilityRequested(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showView"
        }
    .end annotation
.end method
