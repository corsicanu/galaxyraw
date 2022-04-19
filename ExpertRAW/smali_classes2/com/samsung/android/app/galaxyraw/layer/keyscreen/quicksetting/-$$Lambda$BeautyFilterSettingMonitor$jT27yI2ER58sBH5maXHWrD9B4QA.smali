.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;->f$1:Z

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->lambda$onDimChanged$1(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V

    return-void
.end method
