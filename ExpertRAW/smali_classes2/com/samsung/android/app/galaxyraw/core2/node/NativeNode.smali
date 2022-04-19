.class public Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;
.super Ljava/lang/Object;
.source "NativeNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    }
.end annotation


# static fields
.field private static final NATIVE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static TypeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

.field private static mApplicationStateCallback:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;


# instance fields
.field private mNativeNodeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->NATIVE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$1;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$1;-><init>()V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mApplicationStateCallback:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->getInstance()Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->loadLibrary()V

    const-string v1, "Setting Observer"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mAppStateObj:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mApplicationStateCallback:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->setObserver(Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->loadNativeNode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "load nativeNode(id: %d) fail"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native _nativeCall(JIJIJJJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeNodeRef",
            "key",
            "newTypeConverter",
            "argSize",
            "getTypeConverter",
            "getTypeConverter1",
            "getTypeConverter2",
            "arg",
            "arg1",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(JIJIJJJ",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->TypeConverters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->NATIVE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method public static loadLibrary()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->TypeConverters:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->NATIVE_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "loadLibrary E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->TypeConverters:Ljava/util/Map;

    const-class v2, Ljava/lang/Void;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->TypeConverters:Ljava/util/Map;

    const-class v2, Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "node-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "loadLibrary X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native loadNativeNode(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method private static putTypeConverter(Ljava/lang/Class;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "typeConverter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->TypeConverters:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private native releaseNativeNode(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeNodeRef"
        }
    .end annotation
.end method

.method private native setNativeCallback(JILcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;[J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeNodeRef",
            "key",
            "callback",
            "newTypeConverters"
        }
    .end annotation
.end method

.method public static updateAppState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->updateNativeAppState(I)V

    return-void
.end method

.method private static native updateNativeAppState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method private native updateNativeSequenceId(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method


# virtual methods
.method public varargs nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;->access$000(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;)[J

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;->access$100(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v4, v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mNativeNodeRef:J

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;->access$200(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;->access$300(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;)J

    move-result-wide v7

    const/4 v9, 0x1

    aget-wide v10, v1, v3

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    move-wide v4, v7

    move v6, v9

    move-wide v7, v10

    move-wide v9, v14

    move-wide/from16 v11, v16

    move-object/from16 v13, p2

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->_nativeCall(JIJIJJJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x3

    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-wide v4, v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mNativeNodeRef:J

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;->access$200(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;->access$300(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;)J

    move-result-wide v7

    array-length v9, v13

    aget-wide v10, v1, v3

    const/4 v12, 0x1

    aget-wide v13, v1, v12

    const/4 v15, 0x2

    aget-wide v16, v1, v15

    aget-object v18, v2, v3

    aget-object v19, v2, v12

    aget-object v15, v2, v15

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    move-wide v4, v7

    move v6, v9

    move-wide v7, v10

    move-wide v9, v13

    move-wide/from16 v11, v16

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->_nativeCall(JIJIJJJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public releaseNode()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mNativeNodeRef:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->releaseNativeNode(J)V

    return-void
.end method

.method public setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCallback"
        }
    .end annotation

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->mNativeNodeRef:J

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->access$400(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)I

    move-result v3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;->access$500(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)[J

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->setNativeCallback(JILcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;[J)V

    return-void
.end method

.method public updateSequenceId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->updateNativeSequenceId(I)V

    return-void
.end method
