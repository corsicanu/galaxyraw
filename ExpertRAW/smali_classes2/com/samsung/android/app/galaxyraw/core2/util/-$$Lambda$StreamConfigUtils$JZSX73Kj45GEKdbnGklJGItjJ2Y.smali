.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$JZSX73Kj45GEKdbnGklJGItjJ2Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$JZSX73Kj45GEKdbnGklJGItjJ2Y;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$StreamConfigUtils$JZSX73Kj45GEKdbnGklJGItjJ2Y;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StreamConfigUtils;->lambda$getDistinctRawStreamConfigs$1(Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;)Z

    move-result p0

    return p0
.end method
