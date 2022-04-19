.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;
.super Ljava/util/HashMap;
.source "ProSliderContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12013f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerView$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
