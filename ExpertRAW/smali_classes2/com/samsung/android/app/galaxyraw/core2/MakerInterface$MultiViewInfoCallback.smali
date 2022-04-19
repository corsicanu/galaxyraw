.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiViewInfoCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;,
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewCropRoiStates;
    }
.end annotation


# static fields
.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI1:I = 0x3

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI1_UI:I = 0x4

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI2:I = 0x5

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI2_UI:I = 0x6

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI3:I = 0x7

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI3_UI:I = 0x8

.field public static final MULTIVIEW_CROP_ROI_INDEX_TELE:I = 0x2

.field public static final MULTIVIEW_CROP_ROI_INDEX_ULTRA_WIDE:I = 0x0

.field public static final MULTIVIEW_CROP_ROI_INDEX_WIDE:I = 0x1


# virtual methods
.method public abstract onMultiViewInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "multiViewInfo",
            "camDevice"
        }
    .end annotation
.end method
