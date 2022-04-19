.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AfInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfTrigger;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfState;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfMode;
    }
.end annotation


# virtual methods
.method public abstract onAfInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "afInfo",
            "camDevice"
        }
    .end annotation
.end method
