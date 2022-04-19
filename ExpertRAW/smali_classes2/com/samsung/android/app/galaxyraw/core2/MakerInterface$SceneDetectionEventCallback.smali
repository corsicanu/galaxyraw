.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SceneDetectionEventCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback$SceneDetectionEventSceneIndex;
    }
.end annotation


# static fields
.field public static final SCENE_DETECTION_INFO_INDEX_CONFIDENCE_SCORE:I = 0x2

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_HEIGHT:I = 0x6

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_LEFT:I = 0x3

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_TOP:I = 0x4

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_WIDTH:I = 0x5

.field public static final SCENE_DETECTION_INFO_INDEX_SCENE_INDEX:I = 0x1

.field public static final SCENE_DETECTION_INFO_INDEX_TIMESTAMP:I


# virtual methods
.method public abstract onSceneDetectionEvent(I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneIndex",
            "sceneDetectionInfo",
            "camDevice"
        }
    .end annotation
.end method
