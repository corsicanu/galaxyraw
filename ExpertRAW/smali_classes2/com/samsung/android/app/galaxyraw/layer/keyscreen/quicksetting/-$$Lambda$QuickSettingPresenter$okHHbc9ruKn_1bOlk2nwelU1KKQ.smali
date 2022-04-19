.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;->f$1:Z

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->lambda$onLightConditionChanged$4$QuickSettingPresenter(ZLcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method
