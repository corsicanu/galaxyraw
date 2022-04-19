.class Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;
.super Ljava/util/HashMap;
.source "ShootingModeProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/-$$Lambda$ShootingModeProviderImpl$1$PWGbh1zRJT2THovlbNlDDTyJ75I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/-$$Lambda$ShootingModeProviderImpl$1$PWGbh1zRJT2THovlbNlDDTyJ75I;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;I)Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProView;->setPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;)V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;)V

    return-object p0
.end method
