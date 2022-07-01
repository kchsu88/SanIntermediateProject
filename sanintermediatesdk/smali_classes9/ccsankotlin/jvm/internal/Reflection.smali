.class public Lccsankotlin/jvm/internal/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final EMPTY_K_CLASS_ARRAY:[Lccsankotlin/reflect/KClass;

.field static final REFLECTION_NOT_AVAILABLE:Ljava/lang/String; = " (Kotlin reflection is not available)"

.field private static final factory:Lccsankotlin/jvm/internal/ReflectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    .local v1, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsankotlin/jvm/internal/ReflectionFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v1    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    goto :goto_0

    .line 32
    .end local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    :catch_0
    move-exception v1

    .restart local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const/4 v0, 0x0

    goto :goto_1

    .line 31
    .end local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .restart local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    .local v1, "e":Ljava/lang/InstantiationException;
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 30
    .end local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    :catch_2
    move-exception v1

    .restart local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 29
    .end local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    :catch_3
    move-exception v1

    .restart local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    .line 32
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_0
    nop

    .line 34
    :goto_1
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_2

    :cond_0
    new-instance v1, Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-direct {v1}, Lccsankotlin/jvm/internal/ReflectionFactory;-><init>()V

    :goto_2
    sput-object v1, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    .line 39
    .end local v0    # "impl":Lccsankotlin/jvm/internal/ReflectionFactory;
    const/4 v0, 0x0

    new-array v0, v0, [Lccsankotlin/reflect/KClass;

    sput-object v0, Lccsankotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lccsankotlin/reflect/KClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;

    .line 42
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->createKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public static createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;
    .param p1, "internalName"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lccsankotlin/jvm/internal/ReflectionFactory;->createKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public static function(Lccsankotlin/jvm/internal/FunctionReference;)Lccsankotlin/reflect/KFunction;
    .locals 1
    .param p0, "f"    # Lccsankotlin/jvm/internal/FunctionReference;

    .line 89
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->function(Lccsankotlin/jvm/internal/FunctionReference;)Lccsankotlin/reflect/KFunction;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;

    .line 59
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KClass;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;
    .param p1, "internalName"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lccsankotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinClasses([Ljava/lang/Class;)[Lccsankotlin/reflect/KClass;
    .locals 4
    .param p0, "javaClasses"    # [Ljava/lang/Class;

    .line 67
    array-length v0, p0

    .line 68
    .local v0, "size":I
    if-nez v0, :cond_0

    sget-object v1, Lccsankotlin/jvm/internal/Reflection;->EMPTY_K_CLASS_ARRAY:[Lccsankotlin/reflect/KClass;

    return-object v1

    .line 69
    :cond_0
    new-array v1, v0, [Lccsankotlin/reflect/KClass;

    .line 70
    .local v1, "kClasses":[Lccsankotlin/reflect/KClass;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 71
    aget-object v3, p0, v2

    invoke-static {v3}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;)Lccsankotlin/reflect/KDeclarationContainer;
    .locals 2
    .param p0, "javaClass"    # Ljava/lang/Class;

    .line 51
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lccsankotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v0

    return-object v0
.end method

.method public static getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KDeclarationContainer;
    .locals 1
    .param p0, "javaClass"    # Ljava/lang/Class;
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1}, Lccsankotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lccsankotlin/reflect/KDeclarationContainer;

    move-result-object v0

    return-object v0
.end method

.method public static mutableProperty0(Lccsankotlin/jvm/internal/MutablePropertyReference0;)Lccsankotlin/reflect/KMutableProperty0;
    .locals 1
    .param p0, "p"    # Lccsankotlin/jvm/internal/MutablePropertyReference0;

    .line 99
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->mutableProperty0(Lccsankotlin/jvm/internal/MutablePropertyReference0;)Lccsankotlin/reflect/KMutableProperty0;

    move-result-object v0

    return-object v0
.end method

.method public static mutableProperty1(Lccsankotlin/jvm/internal/MutablePropertyReference1;)Lccsankotlin/reflect/KMutableProperty1;
    .locals 1
    .param p0, "p"    # Lccsankotlin/jvm/internal/MutablePropertyReference1;

    .line 107
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lccsankotlin/jvm/internal/MutablePropertyReference1;)Lccsankotlin/reflect/KMutableProperty1;

    move-result-object v0

    return-object v0
.end method

.method public static mutableProperty2(Lccsankotlin/jvm/internal/MutablePropertyReference2;)Lccsankotlin/reflect/KMutableProperty2;
    .locals 1
    .param p0, "p"    # Lccsankotlin/jvm/internal/MutablePropertyReference2;

    .line 115
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->mutableProperty2(Lccsankotlin/jvm/internal/MutablePropertyReference2;)Lccsankotlin/reflect/KMutableProperty2;

    move-result-object v0

    return-object v0
.end method

.method public static nullableTypeOf(Ljava/lang/Class;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;

    .line 152
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static nullableTypeOf(Ljava/lang/Class;Lccsankotlin/reflect/KTypeProjection;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;
    .param p1, "arg1"    # Lccsankotlin/reflect/KTypeProjection;

    .line 157
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static nullableTypeOf(Ljava/lang/Class;Lccsankotlin/reflect/KTypeProjection;Lccsankotlin/reflect/KTypeProjection;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;
    .param p1, "arg1"    # Lccsankotlin/reflect/KTypeProjection;
    .param p2, "arg2"    # Lccsankotlin/reflect/KTypeProjection;

    .line 162
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lccsankotlin/reflect/KTypeProjection;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs nullableTypeOf(Ljava/lang/Class;[Lccsankotlin/reflect/KTypeProjection;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;
    .param p1, "arguments"    # [Lccsankotlin/reflect/KTypeProjection;

    .line 167
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1}, Lccsankotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static nullableTypeOf(Lccsankotlin/reflect/KClassifier;)Lccsankotlin/reflect/KType;
    .locals 3
    .param p0, "classifier"    # Lccsankotlin/reflect/KClassifier;

    .line 147
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static property0(Lccsankotlin/jvm/internal/PropertyReference0;)Lccsankotlin/reflect/KProperty0;
    .locals 1
    .param p0, "p"    # Lccsankotlin/jvm/internal/PropertyReference0;

    .line 95
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->property0(Lccsankotlin/jvm/internal/PropertyReference0;)Lccsankotlin/reflect/KProperty0;

    move-result-object v0

    return-object v0
.end method

.method public static property1(Lccsankotlin/jvm/internal/PropertyReference1;)Lccsankotlin/reflect/KProperty1;
    .locals 1
    .param p0, "p"    # Lccsankotlin/jvm/internal/PropertyReference1;

    .line 103
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->property1(Lccsankotlin/jvm/internal/PropertyReference1;)Lccsankotlin/reflect/KProperty1;

    move-result-object v0

    return-object v0
.end method

.method public static property2(Lccsankotlin/jvm/internal/PropertyReference2;)Lccsankotlin/reflect/KProperty2;
    .locals 1
    .param p0, "p"    # Lccsankotlin/jvm/internal/PropertyReference2;

    .line 111
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->property2(Lccsankotlin/jvm/internal/PropertyReference2;)Lccsankotlin/reflect/KProperty2;

    move-result-object v0

    return-object v0
.end method

.method public static renderLambdaToString(Lccsankotlin/jvm/internal/FunctionBase;)Ljava/lang/String;
    .locals 1
    .param p0, "lambda"    # Lccsankotlin/jvm/internal/FunctionBase;

    .line 83
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lccsankotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static renderLambdaToString(Lccsankotlin/jvm/internal/Lambda;)Ljava/lang/String;
    .locals 1
    .param p0, "lambda"    # Lccsankotlin/jvm/internal/Lambda;

    .line 78
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lccsankotlin/jvm/internal/ReflectionFactory;->renderLambdaToString(Lccsankotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setUpperBounds(Lccsankotlin/reflect/KTypeParameter;Lccsankotlin/reflect/KType;)V
    .locals 2
    .param p0, "typeParameter"    # Lccsankotlin/reflect/KTypeParameter;
    .param p1, "bound"    # Lccsankotlin/reflect/KType;

    .line 179
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lccsankotlin/jvm/internal/ReflectionFactory;->setUpperBounds(Lccsankotlin/reflect/KTypeParameter;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method public static varargs setUpperBounds(Lccsankotlin/reflect/KTypeParameter;[Lccsankotlin/reflect/KType;)V
    .locals 2
    .param p0, "typeParameter"    # Lccsankotlin/reflect/KTypeParameter;
    .param p1, "bounds"    # [Lccsankotlin/reflect/KType;

    .line 184
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p1}, Lccsankotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lccsankotlin/jvm/internal/ReflectionFactory;->setUpperBounds(Lccsankotlin/reflect/KTypeParameter;Ljava/util/List;)V

    .line 185
    return-void
.end method

.method public static typeOf(Ljava/lang/Class;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;

    .line 127
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static typeOf(Ljava/lang/Class;Lccsankotlin/reflect/KTypeProjection;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;
    .param p1, "arg1"    # Lccsankotlin/reflect/KTypeProjection;

    .line 132
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static typeOf(Ljava/lang/Class;Lccsankotlin/reflect/KTypeProjection;Lccsankotlin/reflect/KTypeProjection;)Lccsankotlin/reflect/KType;
    .locals 5
    .param p0, "klass"    # Ljava/lang/Class;
    .param p1, "arg1"    # Lccsankotlin/reflect/KTypeProjection;
    .param p2, "arg2"    # Lccsankotlin/reflect/KTypeProjection;

    .line 137
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lccsankotlin/reflect/KTypeProjection;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs typeOf(Ljava/lang/Class;[Lccsankotlin/reflect/KTypeProjection;)Lccsankotlin/reflect/KType;
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;
    .param p1, "arguments"    # [Lccsankotlin/reflect/KTypeProjection;

    .line 142
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {p0}, Lccsankotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lccsankotlin/reflect/KClass;

    move-result-object v1

    invoke-static {p1}, Lccsankotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static typeOf(Lccsankotlin/reflect/KClassifier;)Lccsankotlin/reflect/KType;
    .locals 3
    .param p0, "classifier"    # Lccsankotlin/reflect/KClassifier;

    .line 122
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeOf(Lccsankotlin/reflect/KClassifier;Ljava/util/List;Z)Lccsankotlin/reflect/KType;

    move-result-object v0

    return-object v0
.end method

.method public static typeParameter(Ljava/lang/Object;Ljava/lang/String;Lccsankotlin/reflect/KVariance;Z)Lccsankotlin/reflect/KTypeParameter;
    .locals 1
    .param p0, "container"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "variance"    # Lccsankotlin/reflect/KVariance;
    .param p3, "isReified"    # Z

    .line 174
    sget-object v0, Lccsankotlin/jvm/internal/Reflection;->factory:Lccsankotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lccsankotlin/jvm/internal/ReflectionFactory;->typeParameter(Ljava/lang/Object;Ljava/lang/String;Lccsankotlin/reflect/KVariance;Z)Lccsankotlin/reflect/KTypeParameter;

    move-result-object v0

    return-object v0
.end method
