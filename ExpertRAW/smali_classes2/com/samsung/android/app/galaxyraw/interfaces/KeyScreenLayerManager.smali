.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;
.super Ljava/lang/Object;
.source "KeyScreenLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;,
        Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;,
        Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;
    }
.end annotation


# static fields
.field public static final ALL:I = -0x1

.field public static final CENTER_BUTTON:I = 0x1

.field public static final INDICATORS:I = 0x10

.field public static final LEFT_BUTTON:I = 0x4

.field public static final MAX_BIT_MARKER:I = 0x40

.field public static final QUICK_MENU:I = 0x8

.field public static final RIGHT_BUTTON:I = 0x2

.field public static final SHOOTING_MODE_SHORTCUT:I = 0x20

.field public static final ZOOM_BAR:I = 0x40


# virtual methods
.method public abstract disableView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract endShutterProgressWheel()V
.end method

.method public abstract getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;
.end method

.method public abstract getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;
.end method

.method public abstract getQuickSettingItemVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
.end method

.method public abstract getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;
.end method

.method public abstract getShutterProgress()F
.end method

.method public abstract getViewVisibleRect(I)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;
.end method

.method public abstract hideBurstShotCounter()V
.end method

.method public abstract hideProcessingAnimation()V
.end method

.method public abstract hideProgressCircle()V
.end method

.method public abstract hideView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract isCaptureAvailable()Z
.end method

.method public abstract isShutterProgressWheelVisible()Z
.end method

.method public abstract isSwitchCameraAvailable()Z
.end method

.method public abstract refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract refreshQuickSetting(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetCenterButtonAction()V
.end method

.method public abstract setCapturingCount(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureCount"
        }
    .end annotation
.end method

.method public abstract setCenterButtonAction(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerButtonAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCenterButtonEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setCenterButtonProperty(Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonProperty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCenterButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setEditButtonClickListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setShutterProgress(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract showBurstShotCounter(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAnimation"
        }
    .end annotation
.end method

.method public abstract showProcessingAnimation()V
.end method

.method public abstract showProgressCircle(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBackgroundRequired"
        }
    .end annotation
.end method

.method public abstract showView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitMarker"
        }
    .end annotation
.end method

.method public abstract startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation
.end method

.method public abstract startShutterProgressWheel()V
.end method

.method public abstract translateIndicator(IIIIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "portraitX",
            "portraitY",
            "landscapeX",
            "landscapeY",
            "reverseLandscapeX",
            "reverseLandscapeY"
        }
    .end annotation
.end method

.method public abstract updateProgressCircle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract updateQuickViewThumbnail()V
.end method

.method public abstract updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "orientation"
        }
    .end annotation
.end method

.method public abstract updateRemainCounter()V
.end method
