.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ERHPq9uUUeQ63H8BdKZ_eXdu4oM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ERHPq9uUUeQ63H8BdKZ_eXdu4oM;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomCurveDataHelper$ERHPq9uUUeQ63H8BdKZ_eXdu4oM;->f$0:Ljava/util/ArrayList;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->lambda$readZoomCurveDataFromString$13(Ljava/util/ArrayList;[Ljava/lang/String;)V

    return-void
.end method
