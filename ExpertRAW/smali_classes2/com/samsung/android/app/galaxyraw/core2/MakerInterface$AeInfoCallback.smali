.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AeInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeExtraMode;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeState;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeMode;
    }
.end annotation


# virtual methods
.method public abstract onAeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "aeInfo",
            "camDevice"
        }
    .end annotation
.end method
