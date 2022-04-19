.class public Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;
.super Ljava/lang/Object;
.source "NotificationMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;
    }
.end annotation


# instance fields
.field private final gsonBuilder:Lcom/google/gson/GsonBuilder;

.field private final listType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->gsonBuilder:Lcom/google/gson/GsonBuilder;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->listType:Ljava/lang/reflect/Type;

    const-class p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION$Serializer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION$Serializer;-><init>(Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$1;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    return-void
.end method

.method private getFilteredAction(Landroid/net/Uri;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "uri",
            "filterMethod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/function/Predicate<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;",
            ">;"
        }
    .end annotation

    const-string v0, "info"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->gsonBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->listType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$KW4xhWRZEOIFkkv8TFL2MUwowqU;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$isRequestStartPermissionByNotify$0(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->getTrigger()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;

    invoke-static {v0, p0, v1}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;

    invoke-static {v0, p0, v1}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;

    const-string v0, "ALL"

    invoke-static {p0, v0, p1}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isStopByNotify$1(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;

    invoke-static {v0, p0, v1}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$ookIFtkU7cwSWAVneqZatc1yty8;

    const-string v0, "ALL"

    invoke-static {p0, v0, p1}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$ookIFtkU7cwSWAVneqZatc1yty8(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getNotifyMessages(Landroid/net/Uri;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage;",
            ">;"
        }
    .end annotation

    const-string v0, "info"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->gsonBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->listType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getNotifySendTime(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "uri"
        }
    .end annotation

    const-string p0, "time"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isRequestStartPermissionByNotify(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "uri",
            "packageName"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$kUvNnbh5aK5-soL74JqSMTO_Axs;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$kUvNnbh5aK5-soL74JqSMTO_Axs;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->getFilteredAction(Landroid/net/Uri;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->REQUEST:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopByNotify(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "uri",
            "packageName"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$De8PCQtZMd1dI7g8EU78S0WKvsg;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/-$$Lambda$NotificationMessageReader$De8PCQtZMd1dI7g8EU78S0WKvsg;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader;->getFilteredAction(Landroid/net/Uri;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;->STOP:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/NotificationMessageReader$NotificationMessage$ACTION;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
