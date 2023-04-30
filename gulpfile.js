//=================================================================================================//
//- ANY PR THAT DOES NOT FOLLOW THE STATEMENTS BELOW WILL BE REFUSED AND YOU WILL HAVE TO CORRECT -//
//=================================================================================================//
//DO NOT COMBINE SCSS FILES INTO ONE FILE - THIS IS NOT THE NEW STANDARD WE ARE WORKING TO FOR SHOPIFY
//ALL NEW SCSS FILES MUST HAVE THE PREFIX "SMARTE"
//ALL TOP LEVEL DIVS OR CLASS NAMES MUST HAVE THE FOLLOWING PREFIXED "smarte"
//VENDOR JAVASCRIPT IS NOT TO BE COMPILED INTO ONE FILE GENERAL LIBRARY'S FOR USE ARE GLOBAL AND ALL SMALL SCRIPTS ARE TO BE WITHIN THE SECTIONS CREATED FOR THE THEME

//========//
//- NOTE -//
//========//

//SCSS WILL NOT COMPILE ON THE SHOPIFY SERVERS THEY DEPRECATED IT
//SCSS FOLDER WILL NOT SOME IN THE ONLINE EDITOR - THIS IS STILL TO BE COMMITTED TO THE REPO FOR DEVELOPERS TO USE
//DO NOT UPGRADE DEPENDENCIES WITHOUT SPEAKING TO DEPARTMENT MANAGER
//THIS PROJECT IS MADE WITH SHOPIFY CLI 3.* THEME KIT WILL NOT WORK WITH THIS PROJECT

//==================================//
// RUN NPM INSTALL FROM ROOT FOLDER //
//==================================//

let gulp = require('gulp'),
    sass = require('gulp-sass')(require('sass'))

    gulp.task('sass', function(){
    return gulp.src('scss/**/*.scss') // Gets all files ending with .scss in /scss and children dirs
        .pipe(sass()) // Converts Sass to CSS with gulp-sass
        .pipe(gulp.dest('assets')) //output css flies to assets directory
});

gulp.task('default', function () {
    gulp.watch('scss/**/*.scss', gulp.series('sass'));
});