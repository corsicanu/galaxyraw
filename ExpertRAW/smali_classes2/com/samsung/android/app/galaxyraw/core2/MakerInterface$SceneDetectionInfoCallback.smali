.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SceneDetectionInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback$SceneDetectionInfoSceneIndex;
    }
.end annotation


# virtual methods
.method public abstract onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "sceneIndex",
            "sceneDetectionInfo",
            "camDevice"
        }
    .end annotation
.end method
