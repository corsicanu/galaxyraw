.class public Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositionGuideInfo"
.end annotation


# static fields
.field public static final STATUS_CHECK_STABLE_TO_RESET_AUTO_TAKING:I = 0xc

.field public static final STATUS_CHECK_STABLE_TO_RESET_KEEP_HOLDING:I = 0xb

.field public static final STATUS_CHECK_STABLE_TO_RESET_NO_SUGGESTION:I = 0x13

.field public static final STATUS_CHECK_STOP_MOVING_TO_RESET:I = 0x16

.field public static final STATUS_IN_PROCESSING:I = 0x14

.field public static final STATUS_MOVEMENT_REACHED:I = 0x6

.field public static final STATUS_NEED_RESET:I = 0xa

.field public static final STATUS_NOT_STABLE_AF:I = 0xe

.field public static final STATUS_NOT_STABLE_SENSOR_AND_BV:I = 0x1

.field public static final STATUS_NO_TARGET_FOUND:I = 0x9

.field public static final STATUS_ROTATION_REACHED:I = 0x7

.field public static final STATUS_START_PROCESSING_NEXT_FRAME:I = 0xd

.field public static final STATUS_TARGET_FOUND:I = 0x4

.field public static final STATUS_TARGET_LOST:I = 0x8

.field public static final STATUS_TARGET_REACHED:I = 0x5

.field public static final STATUS_TARGET_REACHED_AF_FOCUSED:I = 0x10

.field public static final STATUS_TARGET_TRACKING:I = 0x12


# instance fields
.field public angle:F

.field public moveX:F

.field public moveY:F

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "moveX",
            "moveY",
            "angle",
            "status"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveX:F

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveY:F

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->angle:F

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->status:I

    return-void
.end method
