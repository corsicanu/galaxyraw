.class Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$1;
.super Ljava/util/HashMap;
.source "ShootingModeFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;->INSTANCE:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/-$$Lambda$rkLZWxHluyq2P4gMGJTOspNjWME;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
