.class public interface abstract Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;
    }
.end annotation


# static fields
.field public static final CAMERA_SETTING_ACTIVITY:I = 0x0

.field public static final HDR_OPTION_ACTIVITY:I = 0x3

.field public static final RESOLUTION_LIST_ACTIVITY:I = 0x5

.field public static final SCENE_OPTIMIZER_ACTIVITY:I = 0x4

.field public static final SETTING_RETURN_TO_CAMERA:I = 0x1

.field public static final SETTING_RETURN_TO_MAIN_SETTING:I = 0x2

.field public static final SUB_CAMERA_SETTING_ACTIVITY:I = 0x1

.field public static final SUPER_SLOW_MOTION_ACTIVITY:I = 0x2


# virtual methods
.method public abstract deInitialize()V
.end method

.method public abstract initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "engine"
        }
    .end annotation
.end method

.method public abstract isLastState()Z
.end method

.method public abstract isRuleRunning()Z
.end method

.method public abstract sendResult()V
.end method

.method public abstract setCurrentSettingActivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentSettingActivity"
        }
    .end annotation
.end method

.method public abstract setExecutorCommandListener(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setLaunchedFromBixby(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLaunchedFromBixby"
        }
    .end annotation
.end method

.method public abstract waitEmptyRequest()V
.end method
