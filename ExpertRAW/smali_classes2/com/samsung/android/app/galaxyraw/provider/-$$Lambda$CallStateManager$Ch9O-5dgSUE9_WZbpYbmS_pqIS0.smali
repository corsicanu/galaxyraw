.class public final synthetic Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$Ch9O-5dgSUE9_WZbpYbmS_pqIS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$Ch9O-5dgSUE9_WZbpYbmS_pqIS0;->f$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$Ch9O-5dgSUE9_WZbpYbmS_pqIS0;->f$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->lambda$registerCallStateListeners$1$CallStateManager(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method
