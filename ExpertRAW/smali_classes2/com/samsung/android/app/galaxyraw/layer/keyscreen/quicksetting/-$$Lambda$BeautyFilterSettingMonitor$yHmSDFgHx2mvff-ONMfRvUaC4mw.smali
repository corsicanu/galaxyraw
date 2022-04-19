.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;->f$1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->lambda$onCameraSettingChanged$0$BeautyFilterSettingMonitor(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V

    return-void
.end method
