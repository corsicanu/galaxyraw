.class public Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamCapability"
.end annotation


# instance fields
.field private final aeCompensationStep:Landroid/util/Rational;

.field private final availableApertures:[F


# direct methods
.method public constructor <init>(Landroid/util/Rational;[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aeCompensationStep",
            "availableApertures"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "aeCompensationStep"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkDenominator(Landroid/util/Rational;Ljava/lang/String;)Landroid/util/Rational;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;->aeCompensationStep:Landroid/util/Rational;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;->availableApertures:[F

    return-void
.end method


# virtual methods
.method public getAeCompensationStep()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;->aeCompensationStep:Landroid/util/Rational;

    return-object p0
.end method

.method public getAvailableApertures()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$CamCapability;->availableApertures:[F

    return-object p0
.end method
