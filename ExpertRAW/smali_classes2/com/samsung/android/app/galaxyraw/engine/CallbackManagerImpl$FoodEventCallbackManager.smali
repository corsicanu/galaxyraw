.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoodEventCallbackManager"
.end annotation


# instance fields
.field private mFoodEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->mFoodEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->setFoodEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;)V

    return-void
.end method

.method private setFoodEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->mFoodEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFoodResultRegion$0$CallbackManagerImpl$FoodEventCallbackManager([I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->mFoodEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FoodEventListener;->onFoodResultRegion([I)V

    :cond_0
    return-void
.end method

.method public onFoodResultRegion([ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foodResultRegion",
            "camDevice"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;[I)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
