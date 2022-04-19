.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;
.super Ljava/lang/Object;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolutionParams"
.end annotation


# instance fields
.field private mArraySize:I

.field private mResolutionId:[I

.field private mStrResolution:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arraySize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mArraySize:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getResolutionId(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mArraySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getStrResolution(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mArraySize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mResolutionId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$ResolutionParams;->mStrResolution:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
