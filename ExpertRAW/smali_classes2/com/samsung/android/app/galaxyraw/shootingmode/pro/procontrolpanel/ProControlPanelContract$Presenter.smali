.class public interface abstract Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;
.super Ljava/lang/Object;
.source "ProControlPanelContract.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onInitialize()V
.end method

.method public abstract onSensorInfoChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation
.end method

.method public abstract onUpdateExposureValueButtonRequested(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract onUpdateManualFocusButtonRequested(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupportManualFocus"
        }
    .end annotation
.end method

.method public abstract onUpdateResetButtonRequested()V
.end method

.method public abstract setProControlPanelManager(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation
.end method

.method public abstract setProSettingKeyList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraSettingsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateApertureText()V
.end method
