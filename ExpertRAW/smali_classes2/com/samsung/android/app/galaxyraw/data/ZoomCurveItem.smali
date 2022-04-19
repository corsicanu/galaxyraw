.class public Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;
.super Ljava/lang/Object;
.source "ZoomCurveItem.java"


# instance fields
.field private final mNextStepDuration:I

.field private final mZoomRatio:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomRatio",
            "nextStepDuration"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->mZoomRatio:F

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->mNextStepDuration:I

    return-void
.end method


# virtual methods
.method public getNextStepDuration()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->mNextStepDuration:I

    return p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->mZoomRatio:F

    return p0
.end method
