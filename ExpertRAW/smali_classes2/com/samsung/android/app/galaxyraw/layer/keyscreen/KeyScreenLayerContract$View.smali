.class public interface abstract Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;
.super Ljava/lang/Object;
.source "KeyScreenLayerContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;",
        "Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;"
    }
.end annotation


# virtual methods
.method public abstract createView()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;
.end method

.method public abstract hideShootingModeList()V
.end method

.method public abstract hideSubView()Z
.end method

.method public abstract performHideView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract performShowView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract refreshView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "facing"
        }
    .end annotation
.end method

.method public abstract requestCenterButtonAccessibilityFocus()V
.end method

.method public abstract resetDisableView()V
.end method

.method public abstract setAttachMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attachMode"
        }
    .end annotation
.end method

.method public abstract setRecordingMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingMode"
        }
    .end annotation
.end method

.method public abstract setRemainCountIndicator(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation
.end method

.method public abstract setSelfieToneMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfieToneMode"
        }
    .end annotation
.end method

.method public abstract setSplitViewMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splitViewMode"
        }
    .end annotation
.end method

.method public abstract translateShootingModeList(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method public abstract updateCenterButtonShrinkState(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
