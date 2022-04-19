.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;
.super Ljava/lang/Object;
.source "PreviewOverlayLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;"
    }
.end annotation


# virtual methods
.method public abstract enableBottomBackground(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTranslateMatrix(Landroid/graphics/Matrix;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation
.end method

.method public abstract updateAccelerationValue(FFFLandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curAccelerationX",
            "curAccelerationY",
            "curAccelerationZ",
            "previewLayoutRect"
        }
    .end annotation
.end method

.method public abstract updateLayoutBounds(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewRect"
        }
    .end annotation
.end method

.method public abstract updateMultiAfView([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataArray"
        }
    .end annotation
.end method
