.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FoodEventCallbackManager$Q-Ii-6nX8sZVa63Eu42c2FXT_TI;->f$1:[I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FoodEventCallbackManager;->lambda$onFoodResultRegion$0$CallbackManagerImpl$FoodEventCallbackManager([I)V

    return-void
.end method
