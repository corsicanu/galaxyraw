.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SensorInfoEventListener"
.end annotation


# virtual methods
.method public abstract onColorTemperatureChanged(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation
.end method

.method public abstract onExposureTimeChanged(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation
.end method

.method public abstract onExposureValueChanged(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation
.end method

.method public abstract onIsoChanged(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "value"
        }
    .end annotation
.end method
