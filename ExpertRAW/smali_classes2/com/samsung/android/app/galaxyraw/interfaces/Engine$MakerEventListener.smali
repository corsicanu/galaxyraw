.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MakerEventListener"
.end annotation


# virtual methods
.method public abstract onConnectMakerPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "connectionInfo"
        }
    .end annotation
.end method

.method public abstract onStartPreviewPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "makerSettings",
            "capability"
        }
    .end annotation
.end method
