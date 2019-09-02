$(document).ready(function () {
    $('.validaciones').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'Complete este campo'
                    }
                }
            },
            precio: {
                validators: {
                    notEmpty: {
                        message: 'Complete este campo'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }

                }
            },
            producto: {
                validators: {
                    notEmpty: {
                        message: 'Complete este campo'
                    }
                }
            },
            cantidad: {
                validators: {
                    notEmpty: {
                        message: 'Complete este campo'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }
                }
            },
            valorunitario: {
                validators: {
                    notEmpty: {
                        message: 'Complete este campo'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }
                }
            },
            valortotal: {
                validators: {
                    notEmpty: {
                        message: 'Complete este campo'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }
                }
            },
            apellido: {
                validators: {
                    notEmpty: {
                        message: 'El Apellido Es Requerido'
                    }
                }
            },
            documento: {
                validators: {
                    notEmpty: {
                        message: 'El Documento es Requerido'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'El email no es correcto'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'The phone is required and cannot be empty'
                    },
                    regexp: {
                        regexp: /\d{2}-\d{7}$/,
                        message: 'El Télefono no es valido'

                    }
                }
            },
            Nit: {
                validators: {
                    notEmpty: {
                        message: 'El Nit es requerido'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }
                }
            },
            Telefono: {
                validators: {
                    notEmpty: {
                        message: 'The phone is required and cannot be empty'
                    },
                    regexp: {
                        regexp: /\d{2}-\d{7}$/,
                        message: 'El Télefono no es valido'

                    }
                }
            },
            CedulaCliente: {
                validators: {

                    notEmpty: {
                        message: 'Cedula Requerida'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    },
                    stringLength: {
                        min: 8,
                        max: 10,
                        message: 'El número de Documento tiene que ser de 8 o 10 dígitos'
                    },
                }
            },
            CedulaEmpleado: {
                validators: {
                    stringLength: {
                        min: 8,
                        max: 10,
                        message: 'El número de Documento tiene que ser de 8 o 10 dígitos'
                    },

                    notEmpty: {
                        message: 'Cedula Requerida'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }
                }
            },
            cedula: {
                validators: {
                    stringLength: {
                        min: 8,
                        max: 10,
                        message: 'El número de Documento tiene que ser de 8 o 10 dígitos'
                    },

                    notEmpty: {
                        message: 'Cedula Requerida'
                    },
                    integer: {
                        message: 'El valor no es entero'
                    }
                }
            },
            usuario: {
                validators: {
                    notEmpty: {
                        message: 'El Usuario Es Requerido'
                    },
                    stringLength: {
                        min: 5,
                        message: 'El Usuario debe tener minimo 5 digitos'
                    }
                }
            },
                        pass: {
                validators: {
                    notEmpty: {
                        message: 'La Clave Es Requerida'
                    },
                    stringLength: {
                        min: 5,
                        message: 'Clave insegura, debe tener minimo 5 digitos'
                    }
                }
            }
        }
    });
});


