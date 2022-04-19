.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;
.super Ljava/lang/Object;
.source "CameraAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalAudioInputDeviceInfoUpdateListener"
.end annotation


# virtual methods
.method public abstract onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
