.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(IILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;->f$0:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;->f$0:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$303jounaVP1b5TnkqnmBQsE8e2c;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->lambda$addSubDataList$0(IILjava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;)V

    return-void
.end method
