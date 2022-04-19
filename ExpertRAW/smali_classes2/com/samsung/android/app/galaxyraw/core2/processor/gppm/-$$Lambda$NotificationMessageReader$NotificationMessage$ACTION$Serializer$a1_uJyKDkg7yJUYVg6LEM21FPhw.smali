.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$NotificationMessage$ACTION$Serializer$a1_uJyKDkg7yJUYVg6LEM21FPhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/gson/JsonElement;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$NotificationMessage$ACTION$Serializer$a1_uJyKDkg7yJUYVg6LEM21FPhw;->f$0:Lcom/google/gson/JsonElement;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$NotificationMessage$ACTION$Serializer$a1_uJyKDkg7yJUYVg6LEM21FPhw;->f$0:Lcom/google/gson/JsonElement;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION$Serializer;->lambda$deserialize$0(Lcom/google/gson/JsonElement;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;)Z

    move-result p0

    return p0
.end method
