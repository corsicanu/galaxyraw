.class Lcom/samsung/android/app/galaxyraw/DummyActivity$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "DummyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/DummyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/DummyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/DummyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/DummyActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/DummyActivity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/DummyActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/DummyActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/DummyActivity;->finish()V

    :cond_0
    return-void
.end method
