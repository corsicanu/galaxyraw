.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;
.super Ljava/lang/Object;
.source "ZoomCurveDataHelper.java"


# instance fields
.field private final CURVE_DATA_0_5X_100X:Ljava/lang/String;

.field private final CURVE_DATA_0_5X_10X:Ljava/lang/String;

.field private final CURVE_DATA_0_5X_30X:Ljava/lang/String;

.field private final CURVE_DATA_0_5X_5X:Ljava/lang/String;

.field private mZoomCurveData:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.50,0,16;0.52,16,16;0.54,16,16;0.57,16,16;0.61,16,16;0.65,16,16;0.69,16,16;0.74,16,16;0.80,16,16;0.86,16,16;0.92,16,16;0.99,16,16;1.21,16,16;1.26,16,16;1.32,16,16;1.39,16,16;1.45,16,16;1.52,16,16;1.59,16,16;1.67,16,16;1.75,16,16;1.83,16,16;1.92,16,16;2.01,16,16;2.10,16,16;2.20,16,16;2.30,16,16;2.41,16,16;2.53,16,16;2.65,16,16;2.77,16,16;2.91,16,16;3.05,16,16;3.19,16,16;3.34,16,16;3.50,16,16;3.66,16,16;3.84,16,16;4.00,16,16;4.03,16,16;4.13,16,16;4.25,16,16;4.36,16,16;4.48,16,16;4.60,16,16;4.73,16,16;4.87,16,16;4.99,16,16;5.00,16,0;"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->CURVE_DATA_0_5X_5X:Ljava/lang/String;

    const-string v0, "0.50,0,32;0.60,32,32;0.76,32,32;0.98,32,32;1.21,16,16;1.31,16,16;1.42,16,16;1.53,16,16;1.65,16,16;1.78,16,16;1.91,16,16;2.05,16,16;2.19,16,16;2.35,16,16;2.51,16,16;2.67,16,16;2.85,16,16;3.02,16,16;3.21,16,16;3.40,16,16;3.60,16,16;3.81,16,16;4.02,16,16;4.24,16,16;4.46,16,16;4.70,16,16;4.93,16,16;5.18,16,16;5.43,16,16;5.69,16,16;5.95,16,16;6.23,16,16;6.50,16,16;6.79,16,16;7.08,16,16;7.38,16,16;7.68,16,16;7.99,16,16;8.31,16,16;8.64,16,16;8.97,16,16;9.31,16,16;9.65,16,16;10.00,16,0;"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->CURVE_DATA_0_5X_10X:Ljava/lang/String;

    const-string v0, "0.50,0,32;0.60,32,32;0.76,32,32;0.98,32,32;1.21,16,16;1.31,16,16;1.42,16,16;1.53,16,16;1.65,16,16;1.78,16,16;1.91,16,16;2.05,16,16;2.19,16,16;2.35,16,16;2.51,16,16;2.67,16,16;2.85,16,16;3.02,16,16;3.21,16,16;3.40,16,16;3.60,16,16;3.81,16,16;4.02,16,16;4.24,16,16;4.46,16,16;4.70,16,16;4.93,16,16;5.18,16,16;5.43,16,16;5.69,16,16;5.95,16,16;6.23,16,16;6.50,16,16;6.79,16,16;7.08,16,16;7.38,16,16;7.68,16,16;7.99,16,16;8.31,16,16;8.64,16,16;8.97,16,16;9.31,16,16;9.65,16,16;10.00,16,16;10.43,16,16;10.83,16,16;11.36,16,16;12.02,16,16;12.81,16,16;13.72,16,16;14.77,16,16;15.94,16,16;17.25,16,16;18.68,16,16;20.25,16,16;21.94,16,16;23.76,16,16;25.71,16,16;27.79,16,16;30.00,16,0;"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->CURVE_DATA_0_5X_30X:Ljava/lang/String;

    const-string v0, "0.50,0,32;0.60,32,32;0.76,32,32;0.98,32,32;1.21,16,16;1.31,16,16;1.42,16,16;1.53,16,16;1.65,16,16;1.78,16,16;1.91,16,16;2.05,16,16;2.19,16,16;2.35,16,16;2.51,16,16;2.67,16,16;2.85,16,16;3.02,16,16;3.21,16,16;3.40,16,16;3.60,16,16;3.81,16,16;4.02,16,16;4.24,16,16;4.46,16,16;4.70,16,16;4.93,16,16;5.18,16,16;5.43,16,16;5.69,16,16;5.95,16,16;6.23,16,16;6.50,16,16;6.79,16,16;7.08,16,16;7.38,16,16;7.68,16,16;7.99,16,16;8.31,16,16;8.64,16,16;8.97,16,16;9.31,16,16;9.65,16,16;10.00,16,16;10.43,16,16;11.83,16,16;13.88,16,16;16.59,16,16;19.95,16,16;23.96,16,16;28.63,16,16;33.94,16,16;39.92,16,16;46.54,16,16;53.82,16,16;61.75,16,16;70.33,16,16;79.57,16,16;89.46,16,16;100.00,16,0;"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->CURVE_DATA_0_5X_100X:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->prepareZoomCurveData()V

    return-void
.end method

.method private addSubDataList(Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "keyStr",
            "startZoomLevel",
            "endZoomLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;

    invoke-direct {p2, p3, p4, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;-><init>(IILjava/util/ArrayList;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    int-to-float p0, p4

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p0, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->getZoomRatio()F

    move-result p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;-><init>(FI)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private getReverseSubZoomCurveDataList(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startZoomLevel",
            "endZoomLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$0YyPdlfd34BMfgaAt7HMjReFBfg;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$jSEj6BW0JQET8fvMS5uG4FI57kU;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$jSEj6BW0JQET8fvMS5uG4FI57kU;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$K2KHeLAvVTcxMD9H_2ZR_v3ICtM;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$K2KHeLAvVTcxMD9H_2ZR_v3ICtM;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$dmCn8jj5LeXZ6U5o7uPMmuQiJlE;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$dmCn8jj5LeXZ6U5o7uPMmuQiJlE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;Ljava/util/ArrayList;II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private getSubZoomCurveDataList(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startZoomLevel",
            "endZoomLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$SOezSVLWsoY7nTdu8YQwbDtaaQA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$SOezSVLWsoY7nTdu8YQwbDtaaQA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$sEP_Y-lOHsSAM-sZvAMrCrgvm7E;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$sEP_Y-lOHsSAM-sZvAMrCrgvm7E;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$bzRSAP0NJbRz1LYDW3FfcKf1nR8;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$bzRSAP0NJbRz1LYDW3FfcKf1nR8;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$d8THPVCH0CHgF1IZwBZUdLDw7H0;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$d8THPVCH0CHgF1IZwBZUdLDw7H0;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;Ljava/util/ArrayList;II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic lambda$addSubDataList$0(IILjava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;)V
    .locals 2

    new-instance v0, Landroid/util/Range;

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->getZoomRatio()F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->getZoomRatio()F

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;-><init>(FI)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$getReverseSubZoomCurveDataList$1(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getReverseSubZoomCurveDataList$2(I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$getReverseSubZoomCurveDataList$3(I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getSubZoomCurveDataList$5(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getSubZoomCurveDataList$6(I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gt p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$getSubZoomCurveDataList$7(I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$readReverseZoomCurveDataFromString$10(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readReverseZoomCurveDataFromString$11(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;-><init>(FI)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$readReverseZoomCurveDataFromString$9(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$readZoomCurveDataFromString$12(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readZoomCurveDataFromString$13(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;-><init>(FI)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareZoomCurveData()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    const-string v1, "0.50,0,16;0.52,16,16;0.54,16,16;0.57,16,16;0.61,16,16;0.65,16,16;0.69,16,16;0.74,16,16;0.80,16,16;0.86,16,16;0.92,16,16;0.99,16,16;1.21,16,16;1.26,16,16;1.32,16,16;1.39,16,16;1.45,16,16;1.52,16,16;1.59,16,16;1.67,16,16;1.75,16,16;1.83,16,16;1.92,16,16;2.01,16,16;2.10,16,16;2.20,16,16;2.30,16,16;2.41,16,16;2.53,16,16;2.65,16,16;2.77,16,16;2.91,16,16;3.05,16,16;3.19,16,16;3.34,16,16;3.50,16,16;3.66,16,16;3.84,16,16;4.00,16,16;4.03,16,16;4.13,16,16;4.25,16,16;4.36,16,16;4.48,16,16;4.60,16,16;4.73,16,16;4.87,16,16;4.99,16,16;5.00,16,0;"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "500_5000"

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    const-string v2, "0.50,0,32;0.60,32,32;0.76,32,32;0.98,32,32;1.21,16,16;1.31,16,16;1.42,16,16;1.53,16,16;1.65,16,16;1.78,16,16;1.91,16,16;2.05,16,16;2.19,16,16;2.35,16,16;2.51,16,16;2.67,16,16;2.85,16,16;3.02,16,16;3.21,16,16;3.40,16,16;3.60,16,16;3.81,16,16;4.02,16,16;4.24,16,16;4.46,16,16;4.70,16,16;4.93,16,16;5.18,16,16;5.43,16,16;5.69,16,16;5.95,16,16;6.23,16,16;6.50,16,16;6.79,16,16;7.08,16,16;7.38,16,16;7.68,16,16;7.99,16,16;8.31,16,16;8.64,16,16;8.97,16,16;9.31,16,16;9.65,16,16;10.00,16,0;"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "500_10000"

    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    const-string v3, "0.50,0,32;0.60,32,32;0.76,32,32;0.98,32,32;1.21,16,16;1.31,16,16;1.42,16,16;1.53,16,16;1.65,16,16;1.78,16,16;1.91,16,16;2.05,16,16;2.19,16,16;2.35,16,16;2.51,16,16;2.67,16,16;2.85,16,16;3.02,16,16;3.21,16,16;3.40,16,16;3.60,16,16;3.81,16,16;4.02,16,16;4.24,16,16;4.46,16,16;4.70,16,16;4.93,16,16;5.18,16,16;5.43,16,16;5.69,16,16;5.95,16,16;6.23,16,16;6.50,16,16;6.79,16,16;7.08,16,16;7.38,16,16;7.68,16,16;7.99,16,16;8.31,16,16;8.64,16,16;8.97,16,16;9.31,16,16;9.65,16,16;10.00,16,16;10.43,16,16;10.83,16,16;11.36,16,16;12.02,16,16;12.81,16,16;13.72,16,16;14.77,16,16;15.94,16,16;17.25,16,16;18.68,16,16;20.25,16,16;21.94,16,16;23.76,16,16;25.71,16,16;27.79,16,16;30.00,16,0;"

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "500_30000"

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    const-string v4, "0.50,0,32;0.60,32,32;0.76,32,32;0.98,32,32;1.21,16,16;1.31,16,16;1.42,16,16;1.53,16,16;1.65,16,16;1.78,16,16;1.91,16,16;2.05,16,16;2.19,16,16;2.35,16,16;2.51,16,16;2.67,16,16;2.85,16,16;3.02,16,16;3.21,16,16;3.40,16,16;3.60,16,16;3.81,16,16;4.02,16,16;4.24,16,16;4.46,16,16;4.70,16,16;4.93,16,16;5.18,16,16;5.43,16,16;5.69,16,16;5.95,16,16;6.23,16,16;6.50,16,16;6.79,16,16;7.08,16,16;7.38,16,16;7.68,16,16;7.99,16,16;8.31,16,16;8.64,16,16;8.97,16,16;9.31,16,16;9.65,16,16;10.00,16,16;10.43,16,16;11.83,16,16;13.88,16,16;16.59,16,16;19.95,16,16;23.96,16,16;28.63,16,16;33.94,16,16;39.92,16,16;46.54,16,16;53.82,16,16;61.75,16,16;70.33,16,16;79.57,16,16;89.46,16,16;100.00,16,0;"

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "500_100000"

    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readReverseZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v5, "5000_500"

    invoke-virtual {v0, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readReverseZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "10000_500"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readReverseZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "30000_500"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->readReverseZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "100000_500"

    invoke-virtual {v0, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readReverseZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$GNZyNZOvxLNSpnzUxuAfphBPg_c;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$GNZyNZOvxLNSpnzUxuAfphBPg_c;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ZHHKF1w4al3Y-DlRDNMNMcDJpHs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ZHHKF1w4al3Y-DlRDNMNMcDJpHs;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$K_SLBut57JEUw0WHvfVC_VQySz4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$K_SLBut57JEUw0WHvfVC_VQySz4;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method private readZoomCurveDataFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$7mnCPuqdgzKoGU3_wHfbhHoF-TU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$7mnCPuqdgzKoGU3_wHfbhHoF-TU;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ERHPq9uUUeQ63H8BdKZ_eXdu4oM;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ERHPq9uUUeQ63H8BdKZ_eXdu4oM;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public getZoomCurveDataList(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startZoomLevel",
            "endZoomLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->mZoomCurveData:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->getSubZoomCurveDataList(II)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->getReverseSubZoomCurveDataList(II)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public synthetic lambda$getReverseSubZoomCurveDataList$4$ZoomCurveDataHelper(Ljava/util/ArrayList;II[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p4, p4, v1

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->addSubDataList(Ljava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$getSubZoomCurveDataList$8$ZoomCurveDataHelper(Ljava/util/ArrayList;II[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p4, p4, v1

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->addSubDataList(Ljava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method
