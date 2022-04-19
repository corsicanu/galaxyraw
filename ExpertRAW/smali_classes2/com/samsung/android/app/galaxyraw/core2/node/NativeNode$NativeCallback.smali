.class public abstract Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;
.super Ljava/lang/Object;
.source "NativeNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NativeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ARG:",
        "Ljava/lang/Object;",
        "ARG1:",
        "Ljava/lang/Object;",
        "ARG2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mKey:I

.field private final mNewTypeConverters:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->loadLibrary()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->mNewTypeConverters:[J

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->mKey:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ReflectionUtils;->getGenericSuperAllParameterClasses(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->access$700()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p1, "getGenericSuperAllParameterClasses is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->access$600()Ljava/util/Map;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->mNewTypeConverters:[J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->access$700()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aget-object v7, v1, v3

    aput-object v7, v5, v6

    const-string v6, "NativeCallback key(%d) - ARG[%d] Template Class(%s), can\'t find newTypeConverter"

    invoke-static {v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->mKey:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)[J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->mNewTypeConverters:[J

    return-object p0
.end method


# virtual methods
.method public abstract onPostEventFromNative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg",
            "arg1",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TARG;TARG1;TARG2;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->mKey:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s - key(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
