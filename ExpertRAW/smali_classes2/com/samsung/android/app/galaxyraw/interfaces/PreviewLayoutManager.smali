.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;
.super Ljava/lang/Object;
.source "PreviewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;
    }
.end annotation


# virtual methods
.method public abstract changePreviewSurfaceSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation
.end method

.method public abstract changeSurfaceVisibility(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation
.end method

.method public abstract getPreviewLayoutRect()Landroid/graphics/Rect;
.end method

.method public abstract getResizablePreviewOrientation()I
.end method

.method public abstract registerPreviewLayoutChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setBackgroundColor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method

.method public abstract unregisterPreviewLayoutChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract updateDexCameraOrientation(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation
.end method

.method public abstract updatePreviewLayoutSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation
.end method
