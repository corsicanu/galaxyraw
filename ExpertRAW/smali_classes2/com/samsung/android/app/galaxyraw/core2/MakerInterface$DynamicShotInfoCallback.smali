.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DynamicShotInfoCallback"
.end annotation


# static fields
.field public static final DYNAMIC_SHOT_MODE_SINGLE:I


# virtual methods
.method public abstract onDynamicShotInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "dynamicShotInfo",
            "camDevice"
        }
    .end annotation
.end method
