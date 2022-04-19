.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LensInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensState;
    }
.end annotation


# virtual methods
.method public abstract onLensInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "lensInfo",
            "camDevice"
        }
    .end annotation
.end method
