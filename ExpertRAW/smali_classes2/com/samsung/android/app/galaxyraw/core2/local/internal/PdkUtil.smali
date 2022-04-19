.class public Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;
.super Ljava/lang/Object;
.source "PdkUtil.java"


# static fields
.field private static final CUSTOM_INTERFACE_HELPER_NAME:Ljava/lang/String; = "com.samsung.android.sdk.camera.impl.internal.CustomInterfaceHelper"

.field private static final TAG:Ljava/lang/String; = "PdkUtil"

.field private static mClassLoader:Ljava/lang/ClassLoader;

.field private static mConstructOutputConfigurationForDeferred:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static mCreateOutputConfigurationForDeferred:Ljava/lang/reflect/Method;

.field private static mGetAvailableSamsungKeyList:Ljava/lang/reflect/Method;

.field private static mSetParameterMethods:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "com.samsung.android.sdk.camera.impl.internal.CustomInterfaceHelper"

    const-string v1, "PdkUtil"

    new-instance v2, Ldalvik/system/PathClassLoader;

    const-class v3, Landroid/util/Log;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "/system/framework/scamera_sdk_util.jar"

    invoke-direct {v2, v4, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v0, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v7, "setSamsungParameter"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/hardware/camera2/CameraDevice;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mSetParameterMethods:Ljava/lang/reflect/Method;

    const-string v2, "Custom interface setSamsungParameter Impl. from preloaded jar."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mSetParameterMethods:Ljava/lang/reflect/Method;

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-ge v2, v7, :cond_0

    const/4 v2, 0x3

    :try_start_1
    const-class v7, Landroid/hardware/camera2/params/OutputConfiguration;

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Landroid/util/Size;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mConstructOutputConfigurationForDeferred:Ljava/lang/reflect/Constructor;

    const-string v7, "OutputConfiguration for Deferred surface from framework."

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mConstructOutputConfigurationForDeferred:Ljava/lang/reflect/Constructor;

    const-string v7, "Try OutputConfiguration for Deferred surface from preloaded jar."

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "createOutputConfiguration"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Landroid/util/Size;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/Class;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mCreateOutputConfigurationForDeferred:Ljava/lang/reflect/Method;

    const-string v7, "Custom interface createOutputConfiguration for Deferred Impl. from preloaded jar."

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mCreateOutputConfigurationForDeferred:Ljava/lang/reflect/Method;

    :goto_1
    :try_start_3
    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v7, "getAvailableSamsungKeyList"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Landroid/hardware/camera2/CameraCharacteristics;

    aput-object v9, v8, v3

    const-class v3, Ljava/lang/Class;

    aput-object v3, v8, v6

    const-class v3, Ljava/lang/Class;

    aput-object v3, v8, v4

    const-class v3, Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v3, v8, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mGetAvailableSamsungKeyList:Ljava/lang/reflect/Method;

    const-string v0, "Custom interface getAvailableSamsungKeyList Impl. from preloaded jar."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    sput-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mGetAvailableSamsungKeyList:Ljava/lang/reflect/Method;

    :cond_0
    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOutputConfigurationForDeferred(Landroid/util/Size;Ljava/lang/Class;I)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "klass",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Landroid/hardware/camera2/params/OutputConfiguration;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mConstructOutputConfigurationForDeferred:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Fail to create custom output configuration for deferred surface."

    const-string v5, "PdkUtil"

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/OutputConfiguration;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {v5, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mCreateOutputConfigurationForDeferred:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/OutputConfiguration;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {v5, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v7
.end method

.method public static getAvailableSamsungKeyList(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/Class;Ljava/lang/Class;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraCharacteristics",
            "metadataClass",
            "keyClass",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TKey:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TTKey;>;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)",
            "Ljava/util/List<",
            "TTKey;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mGetAvailableSamsungKeyList:Ljava/lang/reflect/Method;

    const-string v1, "PdkUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Fail to acquire available samsung key list. (No implementation)"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v3, 0x4

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    aput-object p3, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Fail to acquire available samsung key list."

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static isInitialized()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mSetParameterMethods:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mGetAvailableSamsungKeyList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setSamsungParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "parameter"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/internal/PdkUtil;->mSetParameterMethods:Ljava/lang/reflect/Method;

    const-string v1, "PdkUtil"

    if-nez v0, :cond_0

    const-string p0, "Fail to set samsung parameter to camera device. (No implementation)"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Fail to set samsung parameter to camera device."

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
