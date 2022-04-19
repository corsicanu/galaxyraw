.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$kUvNnbh5aK5-soL74JqSMTO_Axs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$kUvNnbh5aK5-soL74JqSMTO_Axs;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$kUvNnbh5aK5-soL74JqSMTO_Axs;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->lambda$isRequestStartPermissionByNotify$0(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;)Z

    move-result p0

    return p0
.end method
